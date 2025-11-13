.class public final Landroid/graphics/text/LineBreakConfig$Builder;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHyphenation:I

.field private blacklist mLineBreakStyle:I

.field private blacklist mLineBreakWordStyle:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/text/LineBreakConfig;
    .locals 4

    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iget v2, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    iget v3, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    return-object v0
.end method

.method public whitelist merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 2

    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    :cond_0
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    :cond_1
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    :cond_2
    return-object p0
.end method

.method public blacklist reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    :goto_0
    return-object p0
.end method

.method public whitelist setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    return-object p0
.end method

.method public whitelist setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    return-object p0
.end method

.method public whitelist setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    return-object p0
.end method
