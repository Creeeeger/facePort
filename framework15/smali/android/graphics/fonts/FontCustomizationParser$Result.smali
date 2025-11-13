.class public Landroid/graphics/fonts/FontCustomizationParser$Result;
.super Ljava/lang/Object;
.source "FontCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontCustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final blacklist mAdditionalAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAdditionalNamedFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocaleFamilyCustomizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mLocaleFamilyCustomizations:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    iput-object p2, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mLocaleFamilyCustomizations:Ljava/util/List;

    iput-object p3, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getAdditionalAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAdditionalNamedFamilies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getLocaleFamilyCustomizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mLocaleFamilyCustomizations:Ljava/util/List;

    return-object v0
.end method
