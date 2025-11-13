.class public final Landroid/hardware/display/BrightnessCorrection;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;,
        Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SCALE_AND_TRANSLATE_LOG:I = 0x1

.field private static final blacklist TAG_SCALE_AND_TRANSLATE_LOG:Ljava/lang/String; = "scale-and-translate-log"


# instance fields
.field private blacklist mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .locals 0

    invoke-static {p0, p1}, Landroid/hardware/display/BrightnessCorrection;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/BrightnessCorrection$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessCorrection$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    return-void
.end method

.method public static whitelist createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;
    .locals 2

    new-instance v0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    invoke-direct {v0, p0, p1}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;-><init>(FF)V

    new-instance v1, Landroid/hardware/display/BrightnessCorrection;

    invoke-direct {v1, v0}, Landroid/hardware/display/BrightnessCorrection;-><init>(Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;)V

    return-object v1
.end method

.method private static blacklist loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static blacklist loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "scale-and-translate-log"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist apply(F)F
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->apply(F)F

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/hardware/display/BrightnessCorrection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    iget-object v1, v0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    iget-object v2, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v1, v2}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
