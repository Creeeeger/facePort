.class public Lcom/samsung/android/fontutil/FlipFontOptimizer;
.super Ljava/lang/Object;
.source "FlipFontOptimizer.java"


# static fields
.field private static final blacklist EXTRA_FLIPFONT_NAME:Ljava/lang/String; = "flipfontName"

.field private static final blacklist FLIPFONT_ACTION:Ljava/lang/String; = "samsung.settings.flipfont.APPLY_NEW_FONT"

.field private static final blacklist FONT_PACKAGE_ARIAL_NARROW:Ljava/lang/String; = "com.monotype.android.font.ArialNarrowProRegular"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyFlipFonts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsung.settings.flipfont.APPLY_NEW_FONT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.flipfont.FlipFontReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "flipfontName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public blacklist setFlipfont(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSpecialEdition"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Typeface;->getFontNameFlipFont()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThomBrowne"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.monotype.android.font.ArialNarrowProRegular"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/fontutil/FlipFontOptimizer;->applyFlipFonts(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
