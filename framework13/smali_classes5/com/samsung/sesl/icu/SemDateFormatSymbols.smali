.class public Lcom/samsung/sesl/icu/SemDateFormatSymbols;
.super Ljava/lang/Object;
.source "SemDateFormatSymbols.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist getAmpmNarrowStrings(Landroid/icu/text/DateFormatSymbols;)[Ljava/lang/String;
    .locals 1
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;

    .line 13
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getAmpmNarrowStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
