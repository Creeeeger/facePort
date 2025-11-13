.class public Landroidx/appcompat/widget/ResourcesWrapper;
.super Landroid/content/res/Resources;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public final getBoolean(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final getColor(I)I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public final getDimension(I)F
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final getDimensionPixelOffset(I)I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public final getDimensionPixelSize(I)I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getFraction(III)F
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    return p0
.end method

.method public final getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getIntArray(I)[I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getInteger(I)I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public final getMovie(I)Landroid/graphics/Movie;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object p0

    return-object p0
.end method

.method public final getQuantityString(II)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQuantityText(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceEntryName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResourcePackageName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceTypeName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStringArray(I)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTextArray(I)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(ILandroid/util/TypedValue;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public final getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    return-void
.end method

.method public final getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public final getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public final obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public final obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public final openRawResource(I)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public final parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public final updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method
