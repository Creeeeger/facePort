.class public final Landroid/graphics/text/LineBreakConfig;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreakConfig$Builder;,
        Landroid/graphics/text/LineBreakConfig$LineBreakWordStyle;,
        Landroid/graphics/text/LineBreakConfig$LineBreakStyle;,
        Landroid/graphics/text/LineBreakConfig$Hyphenation;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/text/LineBreakConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HYPHENATION_DISABLED:I = 0x0

.field public static final whitelist HYPHENATION_ENABLED:I = 0x1

.field public static final whitelist HYPHENATION_UNSPECIFIED:I = -0x1

.field public static final whitelist LINE_BREAK_STYLE_AUTO:I = 0x5

.field public static final whitelist LINE_BREAK_STYLE_LOOSE:I = 0x1

.field public static final whitelist LINE_BREAK_STYLE_NONE:I = 0x0

.field public static final whitelist LINE_BREAK_STYLE_NORMAL:I = 0x2

.field public static final whitelist LINE_BREAK_STYLE_NO_BREAK:I = 0x4

.field public static final whitelist LINE_BREAK_STYLE_STRICT:I = 0x3

.field public static final whitelist LINE_BREAK_STYLE_UNSPECIFIED:I = -0x1

.field public static final whitelist LINE_BREAK_WORD_STYLE_AUTO:I = 0x2

.field public static final whitelist LINE_BREAK_WORD_STYLE_NONE:I = 0x0

.field public static final whitelist LINE_BREAK_WORD_STYLE_PHRASE:I = 0x1

.field public static final whitelist LINE_BREAK_WORD_STYLE_UNSPECIFIED:I = -0x1

.field public static final blacklist NONE:Landroid/graphics/text/LineBreakConfig;


# instance fields
.field private final blacklist mHyphenation:I

.field private final blacklist mLineBreakStyle:I

.field private final blacklist mLineBreakWordStyle:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I
    .locals 0

    iget p0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I
    .locals 0

    iget p0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I
    .locals 0

    iget p0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    new-instance v0, Landroid/graphics/text/LineBreakConfig$1;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$1;-><init>()V

    sput-object v0, Landroid/graphics/text/LineBreakConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    iput p2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    iput p3, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    return-void
.end method

.method public static blacklist getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;
    .locals 2

    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getResolvedHyphenation(Landroid/graphics/text/LineBreakConfig;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    :goto_0
    return v0
.end method

.method public static blacklist getResolvedLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I
    .locals 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x23

    const/16 v2, 0x23

    if-lt v0, v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    :goto_1
    return v3
.end method

.method public static blacklist getResolvedLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I
    .locals 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x23

    const/16 v2, 0x23

    if-lt v0, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    :goto_1
    return v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/graphics/text/LineBreakConfig;

    if-nez v2, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/graphics/text/LineBreakConfig;

    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    iget v4, v2, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    iget v4, v2, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    iget v4, v2, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    if-ne v3, v4, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public whitelist getHyphenation()I
    .locals 1

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    return v0
.end method

.method public whitelist getLineBreakStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    return v0
.end method

.method public whitelist getLineBreakWordStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig;
    .locals 5

    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    :goto_0
    iget v3, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    :goto_1
    iget v4, p1, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    if-ne v4, v2, :cond_2

    iget v2, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    goto :goto_2

    :cond_2
    iget v2, p1, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    :goto_2
    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineBreakConfig{mLineBreakStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLineBreakWordStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHyphenation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

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

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
