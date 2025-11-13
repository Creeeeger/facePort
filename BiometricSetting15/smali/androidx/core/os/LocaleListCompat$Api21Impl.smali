.class public abstract Landroidx/core/os/LocaleListCompat$Api21Impl;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 3
    .line 4
    new-instance v0, Ljava/util/Locale;

    .line 5
    .line 6
    const-string v1, "en"

    .line 7
    .line 8
    const-string v2, "XA"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/Locale;

    .line 14
    .line 15
    const-string v1, "ar"

    .line 16
    .line 17
    const-string v2, "XB"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
