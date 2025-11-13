.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final Default:Lkotlin/random/Random$Default;

.field public static final defaultRandom:Lkotlin/random/AbstractPlatformRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/random/Random$Default;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 8
    .line 9
    sget-object v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x22

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom;

    .line 23
    .line 24
    invoke-direct {v0}, Lkotlin/random/FallbackThreadLocalRandom;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Lkotlin/random/jdk8/PlatformThreadLocalRandom;

    .line 29
    .line 30
    invoke-direct {v0}, Lkotlin/random/Random;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_1
    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
