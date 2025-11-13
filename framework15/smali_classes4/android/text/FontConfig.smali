.class public final Landroid/text/FontConfig;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$FontFamily;,
        Landroid/text/FontConfig$Customization;,
        Landroid/text/FontConfig$NamedFamilyList;,
        Landroid/text/FontConfig$Alias;,
        Landroid/text/FontConfig$Font;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigVersion:I

.field private final blacklist mFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastModifiedTimeMillis:J

.field private final blacklist mLocaleFallbackCustomizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamedFamilyLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/FontConfig$1;

    invoke-direct {v0}, Landroid/text/FontConfig$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;JI)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    iput-object p2, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    iput-object p3, p0, Landroid/text/FontConfig;->mNamedFamilyLists:Ljava/util/List;

    iput-object p4, p0, Landroid/text/FontConfig;->mLocaleFallbackCustomizations:Ljava/util/List;

    iput-wide p5, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    iput p7, p0, Landroid/text/FontConfig;->mConfigVersion:I

    return-void
.end method

.method public static blacklist resolveScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig;

    iget-wide v3, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    iget-wide v5, v2, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/text/FontConfig;->mConfigVersion:I

    iget v4, v2, Landroid/text/FontConfig;->mConfigVersion:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    iget-object v4, v2, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    iget-object v4, v2, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConfigVersion()I
    .locals 1

    iget v0, p0, Landroid/text/FontConfig;->mConfigVersion:I

    return v0
.end method

.method public greylist-max-r getFamilies()[Landroid/text/FontConfig$FontFamily;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/FontConfig$FontFamily;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/FontConfig$FontFamily;

    return-object v0
.end method

.method public whitelist getFontFamilies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLastModifiedTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    return-wide v0
.end method

.method public blacklist getLocaleFallbackCustomizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/FontConfig;->mLocaleFallbackCustomizations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNamedFamilyLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/FontConfig;->mNamedFamilyLists:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    iget-object v1, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    iget-wide v2, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Landroid/text/FontConfig;->mConfigVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontConfig{mFamilies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAliases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastModifiedTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/text/FontConfig;->mNamedFamilyLists:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-wide v0, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/text/FontConfig;->mConfigVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
