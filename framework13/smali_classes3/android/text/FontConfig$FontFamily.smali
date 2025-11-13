.class public final Landroid/text/FontConfig$FontFamily;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$FontFamily$Variant;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VARIANT_COMPACT:I = 0x1

.field public static final whitelist VARIANT_DEFAULT:I = 0x0

.field public static final whitelist VARIANT_ELEGANT:I = 0x2


# instance fields
.field private final blacklist mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocaleList:Landroid/os/LocaleList;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mVariant:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 615
    new-instance v0, Landroid/text/FontConfig$FontFamily$1;

    invoke-direct {v0}, Landroid/text/FontConfig$FontFamily$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$FontFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "localeList"    # Landroid/os/LocaleList;
    .param p4, "variant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/LocaleList;",
            "I)V"
        }
    .end annotation

    .line 551
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    .line 553
    iput-object p2, p0, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    .line 554
    iput-object p3, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    .line 555
    iput p4, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    .line 556
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 657
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 658
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 659
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    .line 660
    .local v2, "that":Landroid/text/FontConfig$FontFamily;
    iget v3, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    iget v4, v2, Landroid/text/FontConfig$FontFamily;->mVariant:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    iget-object v4, v2, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    .line 661
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    .line 662
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    iget-object v4, v2, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    .line 663
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 660
    :goto_0
    return v0

    .line 658
    .end local v2    # "that":Landroid/text/FontConfig$FontFamily;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getFontList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-r getFonts()[Landroid/text/FontConfig$Font;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/FontConfig$Font;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/FontConfig$Font;

    return-object v0
.end method

.method public blacklist getLanguages()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .locals 1

    .line 592
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 582
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVariant()I
    .locals 1

    .line 599
    iget v0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontFamily{mFonts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocaleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 609
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 610
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 612
    iget v0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    return-void
.end method
