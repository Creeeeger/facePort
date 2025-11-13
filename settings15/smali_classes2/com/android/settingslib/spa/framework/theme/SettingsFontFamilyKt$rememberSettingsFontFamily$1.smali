.class final synthetic Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "getSettingsFontFamily(Landroid/content/Context;)Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;"

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-class v2, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt;

    const-string v3, "getSettingsFontFamily"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/content/Context;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;

    const-string v0, "config_headlineFontFamily"

    const-string v1, "config_headlineFontFamilyMedium"

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt;->getFontFamily(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    const-string v1, "config_bodyFontFamily"

    const-string v2, "config_bodyFontFamilyMedium"

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt;->getFontFamily(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontFamily;)V

    return-object p0
.end method
