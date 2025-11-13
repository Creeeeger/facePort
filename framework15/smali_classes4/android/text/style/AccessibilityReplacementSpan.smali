.class public Landroid/text/style/AccessibilityReplacementSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AccessibilityReplacementSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/AccessibilityReplacementSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/style/AccessibilityReplacementSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityReplacementSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityReplacementSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/AccessibilityReplacementSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityReplacementSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public whitelist getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/AccessibilityReplacementSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityReplacementSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/AccessibilityReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
