.class public final Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;
.super Ljava/lang/Object;
.source "GtsConfigurationFactory.kt"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;

.field private static final RO_BUILD_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static final RO_CSC_COUNTRY_CODE:Ljava/lang/String; = "ro.csc.country_code"

.field private static final RO_CSC_SALES_CODE:Ljava/lang/String; = "ro.csc.sales_code"

.field private static final RO_DEVICE_NAME:Ljava/lang/String; = "ro.product.vendor.device"

.field private static final RO_PRODUCT_NAME:Ljava/lang/String; = "ro.product.name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsConfigurationFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final make(Landroid/content/Context;)Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 17
    sget-object v1, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/PackageManagerUtils;

    const-string/jumbo v2, "packageName"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)J

    move-result-wide v4

    .line 18
    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->getVersionName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsConfiguration;

    const-string/jumbo v1, "ro.product.name"

    .line 24
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    const-string/jumbo v1, "ro.product.vendor.device"

    .line 25
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    const-string/jumbo v1, "ro.csc.country_code"

    .line 26
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    const-string/jumbo v1, "ro.csc.sales_code"

    .line 27
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object v10, v2

    :goto_3
    const-string/jumbo v1, "ro.build.characteristics"

    .line 28
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "SemSystemProperties.get(\u2026UILD_CHARACTERISTICS, \"\")"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    sget v13, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v14, 0x0

    const/16 v15, 0x400

    const/16 v16, 0x0

    move-object v2, v0

    .line 20
    invoke-direct/range {v2 .. v16}, Lcom/samsung/android/gtscell/data/GtsConfiguration;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
