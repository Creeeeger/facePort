.class public Landroidx/reflect/icu/SeslLocaleDataReflector;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"


# static fields
.field private static mDateFormatSymbolsClass:Ljava/lang/String; = "android.icu.text.DateFormatSymbols"

.field private static mSemDateFormatSymbolsClass:Ljava/lang/String; = "com.samsung.sesl.icu.SemDateFormatSymbols"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getAmpmNarrowStrings(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateFormatSymbols"
        }
    .end annotation

    .line 167
    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemDateFormatSymbolsClass:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Landroidx/reflect/icu/SeslLocaleDataReflector;->mDateFormatSymbolsClass:Ljava/lang/String;

    invoke-static {v3}, Landroidx/reflect/SeslBaseReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getAmpmNarrowStrings"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 169
    invoke-static {v2, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    :cond_0
    instance-of p0, v2, [Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 173
    check-cast v2, [Ljava/lang/String;

    return-object v2

    :cond_1
    const-string p0, "SeslLocaleDataReflector"

    const-string v0, "amPm narrow strings failed. Use getAmPmStrings for ampm"

    .line 175
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance p0, Ljava/text/DateFormatSymbols;

    invoke-direct {p0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
